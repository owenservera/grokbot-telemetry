# sandbox_telemetry_parse — 2026-11-10 05:33:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1005026 lines=2229
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2220 |
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
| `chromeBrowserPssKb` | {'int': 2220} |
| `chromeGpuPssKb` | {'int': 2220} |
| `chromeOtherPssKb` | {'int': 2220} |
| `chromeProcesses` | {'int': 2220} |
| `chromeProfiles` | {'int': 2220} |
| `chromeRendererMaxPssKb` | {'int': 2220} |
| `chromeRendererPssKb` | {'int': 2220} |
| `chromeRenderers` | {'int': 2220} |
| `chromeTabs` | {'int': 2220} |
| `chromeTabsProbedProfiles` | {'int': 2220} |
| `chromeUtilityPssKb` | {'int': 2220} |
| `desktopPssKb` | {'int': 2220} |
| `hostPssKb` | {'int': 2220} |
| `kind` | {'str': 2220} |
| `memAvailableKb` | {'int': 2220} |
| `memTotalKb` | {'int': 2220} |
| `otherPssKb` | {'int': 2220} |
| `processes` | {'int': 2220} |
| `pssFallbackProcesses` | {'int': 2220} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
