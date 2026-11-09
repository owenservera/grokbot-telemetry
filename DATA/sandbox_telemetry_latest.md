# sandbox_telemetry_parse — 2026-11-10 00:48:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=910932 lines=2021
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2012 |
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
| `chromeBrowserPssKb` | {'int': 2012} |
| `chromeGpuPssKb` | {'int': 2012} |
| `chromeOtherPssKb` | {'int': 2012} |
| `chromeProcesses` | {'int': 2012} |
| `chromeProfiles` | {'int': 2012} |
| `chromeRendererMaxPssKb` | {'int': 2012} |
| `chromeRendererPssKb` | {'int': 2012} |
| `chromeRenderers` | {'int': 2012} |
| `chromeTabs` | {'int': 2012} |
| `chromeTabsProbedProfiles` | {'int': 2012} |
| `chromeUtilityPssKb` | {'int': 2012} |
| `desktopPssKb` | {'int': 2012} |
| `hostPssKb` | {'int': 2012} |
| `kind` | {'str': 2012} |
| `memAvailableKb` | {'int': 2012} |
| `memTotalKb` | {'int': 2012} |
| `otherPssKb` | {'int': 2012} |
| `processes` | {'int': 2012} |
| `pssFallbackProcesses` | {'int': 2012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
