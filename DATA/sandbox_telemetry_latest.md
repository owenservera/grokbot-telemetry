# sandbox_telemetry_parse — 2026-11-10 09:49:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1084644 lines=2405
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2396 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2396} |
| `chromeGpuPssKb` | {'int': 2396} |
| `chromeOtherPssKb` | {'int': 2396} |
| `chromeProcesses` | {'int': 2396} |
| `chromeProfiles` | {'int': 2396} |
| `chromeRendererMaxPssKb` | {'int': 2396} |
| `chromeRendererPssKb` | {'int': 2396} |
| `chromeRenderers` | {'int': 2396} |
| `chromeTabs` | {'int': 2396} |
| `chromeTabsProbedProfiles` | {'int': 2396} |
| `chromeUtilityPssKb` | {'int': 2396} |
| `desktopPssKb` | {'int': 2396} |
| `hostPssKb` | {'int': 2396} |
| `kind` | {'str': 2396} |
| `memAvailableKb` | {'int': 2396} |
| `memTotalKb` | {'int': 2396} |
| `otherPssKb` | {'int': 2396} |
| `processes` | {'int': 2396} |
| `pssFallbackProcesses` | {'int': 2396} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
