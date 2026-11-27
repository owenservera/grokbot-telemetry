# sandbox_telemetry_parse — 2026-11-27 21:23:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=596017 lines=1324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1316 |
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
| `chromeBrowserPssKb` | {'int': 1316} |
| `chromeGpuPssKb` | {'int': 1316} |
| `chromeOtherPssKb` | {'int': 1316} |
| `chromeProcesses` | {'int': 1316} |
| `chromeProfiles` | {'int': 1316} |
| `chromeRendererMaxPssKb` | {'int': 1316} |
| `chromeRendererPssKb` | {'int': 1316} |
| `chromeRenderers` | {'int': 1316} |
| `chromeTabs` | {'int': 1316} |
| `chromeTabsProbedProfiles` | {'int': 1316} |
| `chromeUtilityPssKb` | {'int': 1316} |
| `desktopPssKb` | {'int': 1316} |
| `hostPssKb` | {'int': 1316} |
| `kind` | {'str': 1316} |
| `memAvailableKb` | {'int': 1316} |
| `memTotalKb` | {'int': 1316} |
| `otherPssKb` | {'int': 1316} |
| `processes` | {'int': 1316} |
| `pssFallbackProcesses` | {'int': 1316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
