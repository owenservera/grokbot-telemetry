# sandbox_telemetry_parse — 2026-11-07 13:57:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=491462 lines=1094
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1085 |
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
| `chromeBrowserPssKb` | {'int': 1085} |
| `chromeGpuPssKb` | {'int': 1085} |
| `chromeOtherPssKb` | {'int': 1085} |
| `chromeProcesses` | {'int': 1085} |
| `chromeProfiles` | {'int': 1085} |
| `chromeRendererMaxPssKb` | {'int': 1085} |
| `chromeRendererPssKb` | {'int': 1085} |
| `chromeRenderers` | {'int': 1085} |
| `chromeTabs` | {'int': 1085} |
| `chromeTabsProbedProfiles` | {'int': 1085} |
| `chromeUtilityPssKb` | {'int': 1085} |
| `desktopPssKb` | {'int': 1085} |
| `hostPssKb` | {'int': 1085} |
| `kind` | {'str': 1085} |
| `memAvailableKb` | {'int': 1085} |
| `memTotalKb` | {'int': 1085} |
| `otherPssKb` | {'int': 1085} |
| `processes` | {'int': 1085} |
| `pssFallbackProcesses` | {'int': 1085} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
