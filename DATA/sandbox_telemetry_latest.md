# sandbox_telemetry_parse — 2026-11-12 01:19:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1906018 lines=4220
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4211 |
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
| `chromeBrowserPssKb` | {'int': 4211} |
| `chromeGpuPssKb` | {'int': 4211} |
| `chromeOtherPssKb` | {'int': 4211} |
| `chromeProcesses` | {'int': 4211} |
| `chromeProfiles` | {'int': 4211} |
| `chromeRendererMaxPssKb` | {'int': 4211} |
| `chromeRendererPssKb` | {'int': 4211} |
| `chromeRenderers` | {'int': 4211} |
| `chromeTabs` | {'int': 4211} |
| `chromeTabsProbedProfiles` | {'int': 4211} |
| `chromeUtilityPssKb` | {'int': 4211} |
| `desktopPssKb` | {'int': 4211} |
| `hostPssKb` | {'int': 4211} |
| `kind` | {'str': 4211} |
| `memAvailableKb` | {'int': 4211} |
| `memTotalKb` | {'int': 4211} |
| `otherPssKb` | {'int': 4211} |
| `processes` | {'int': 4211} |
| `pssFallbackProcesses` | {'int': 4211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
