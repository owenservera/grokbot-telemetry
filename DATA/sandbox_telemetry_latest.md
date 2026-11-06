# sandbox_telemetry_parse — 2026-11-06 18:51:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=117438 lines=267
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 258 |
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
| `chromeBrowserPssKb` | {'int': 258} |
| `chromeGpuPssKb` | {'int': 258} |
| `chromeOtherPssKb` | {'int': 258} |
| `chromeProcesses` | {'int': 258} |
| `chromeProfiles` | {'int': 258} |
| `chromeRendererMaxPssKb` | {'int': 258} |
| `chromeRendererPssKb` | {'int': 258} |
| `chromeRenderers` | {'int': 258} |
| `chromeTabs` | {'int': 258} |
| `chromeTabsProbedProfiles` | {'int': 258} |
| `chromeUtilityPssKb` | {'int': 258} |
| `desktopPssKb` | {'int': 258} |
| `hostPssKb` | {'int': 258} |
| `kind` | {'str': 258} |
| `memAvailableKb` | {'int': 258} |
| `memTotalKb` | {'int': 258} |
| `otherPssKb` | {'int': 258} |
| `processes` | {'int': 258} |
| `pssFallbackProcesses` | {'int': 258} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
