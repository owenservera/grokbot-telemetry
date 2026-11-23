# sandbox_telemetry_parse — 2026-11-23 14:38:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1875749 lines=4160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4145 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4145} |
| `chromeGpuPssKb` | {'int': 4145} |
| `chromeOtherPssKb` | {'int': 4145} |
| `chromeProcesses` | {'int': 4145} |
| `chromeProfiles` | {'int': 4145} |
| `chromeRendererMaxPssKb` | {'int': 4145} |
| `chromeRendererPssKb` | {'int': 4145} |
| `chromeRenderers` | {'int': 4145} |
| `chromeTabs` | {'int': 4145} |
| `chromeTabsProbedProfiles` | {'int': 4145} |
| `chromeUtilityPssKb` | {'int': 4145} |
| `desktopPssKb` | {'int': 4145} |
| `hostPssKb` | {'int': 4145} |
| `kind` | {'str': 4145} |
| `memAvailableKb` | {'int': 4145} |
| `memTotalKb` | {'int': 4145} |
| `otherPssKb` | {'int': 4145} |
| `processes` | {'int': 4145} |
| `pssFallbackProcesses` | {'int': 4145} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
