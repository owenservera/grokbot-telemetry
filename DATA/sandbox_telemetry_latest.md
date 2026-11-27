# sandbox_telemetry_parse — 2026-11-27 20:28:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=579273 lines=1287
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1279 |
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
| `chromeBrowserPssKb` | {'int': 1279} |
| `chromeGpuPssKb` | {'int': 1279} |
| `chromeOtherPssKb` | {'int': 1279} |
| `chromeProcesses` | {'int': 1279} |
| `chromeProfiles` | {'int': 1279} |
| `chromeRendererMaxPssKb` | {'int': 1279} |
| `chromeRendererPssKb` | {'int': 1279} |
| `chromeRenderers` | {'int': 1279} |
| `chromeTabs` | {'int': 1279} |
| `chromeTabsProbedProfiles` | {'int': 1279} |
| `chromeUtilityPssKb` | {'int': 1279} |
| `desktopPssKb` | {'int': 1279} |
| `hostPssKb` | {'int': 1279} |
| `kind` | {'str': 1279} |
| `memAvailableKb` | {'int': 1279} |
| `memTotalKb` | {'int': 1279} |
| `otherPssKb` | {'int': 1279} |
| `processes` | {'int': 1279} |
| `pssFallbackProcesses` | {'int': 1279} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
