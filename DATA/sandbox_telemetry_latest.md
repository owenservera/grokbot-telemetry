# sandbox_telemetry_parse — 2026-11-10 17:57:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1253983 lines=2779
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2770 |
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
| `chromeBrowserPssKb` | {'int': 2770} |
| `chromeGpuPssKb` | {'int': 2770} |
| `chromeOtherPssKb` | {'int': 2770} |
| `chromeProcesses` | {'int': 2770} |
| `chromeProfiles` | {'int': 2770} |
| `chromeRendererMaxPssKb` | {'int': 2770} |
| `chromeRendererPssKb` | {'int': 2770} |
| `chromeRenderers` | {'int': 2770} |
| `chromeTabs` | {'int': 2770} |
| `chromeTabsProbedProfiles` | {'int': 2770} |
| `chromeUtilityPssKb` | {'int': 2770} |
| `desktopPssKb` | {'int': 2770} |
| `hostPssKb` | {'int': 2770} |
| `kind` | {'str': 2770} |
| `memAvailableKb` | {'int': 2770} |
| `memTotalKb` | {'int': 2770} |
| `otherPssKb` | {'int': 2770} |
| `processes` | {'int': 2770} |
| `pssFallbackProcesses` | {'int': 2770} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
