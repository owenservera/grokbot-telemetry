# sandbox_telemetry_parse — 2026-11-26 16:19:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3326606 lines=7369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7352 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7352} |
| `chromeGpuPssKb` | {'int': 7352} |
| `chromeOtherPssKb` | {'int': 7352} |
| `chromeProcesses` | {'int': 7352} |
| `chromeProfiles` | {'int': 7352} |
| `chromeRendererMaxPssKb` | {'int': 7352} |
| `chromeRendererPssKb` | {'int': 7352} |
| `chromeRenderers` | {'int': 7352} |
| `chromeTabs` | {'int': 7352} |
| `chromeTabsProbedProfiles` | {'int': 7352} |
| `chromeUtilityPssKb` | {'int': 7352} |
| `desktopPssKb` | {'int': 7352} |
| `hostPssKb` | {'int': 7352} |
| `kind` | {'str': 7352} |
| `memAvailableKb` | {'int': 7352} |
| `memTotalKb` | {'int': 7352} |
| `otherPssKb` | {'int': 7352} |
| `processes` | {'int': 7352} |
| `pssFallbackProcesses` | {'int': 7352} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
