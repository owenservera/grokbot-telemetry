# sandbox_telemetry_parse — 2026-11-27 21:07:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=591492 lines=1314
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1306 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1306} |
| `chromeGpuPssKb` | {'int': 1306} |
| `chromeOtherPssKb` | {'int': 1306} |
| `chromeProcesses` | {'int': 1306} |
| `chromeProfiles` | {'int': 1306} |
| `chromeRendererMaxPssKb` | {'int': 1306} |
| `chromeRendererPssKb` | {'int': 1306} |
| `chromeRenderers` | {'int': 1306} |
| `chromeTabs` | {'int': 1306} |
| `chromeTabsProbedProfiles` | {'int': 1306} |
| `chromeUtilityPssKb` | {'int': 1306} |
| `desktopPssKb` | {'int': 1306} |
| `hostPssKb` | {'int': 1306} |
| `kind` | {'str': 1306} |
| `memAvailableKb` | {'int': 1306} |
| `memTotalKb` | {'int': 1306} |
| `otherPssKb` | {'int': 1306} |
| `processes` | {'int': 1306} |
| `pssFallbackProcesses` | {'int': 1306} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
