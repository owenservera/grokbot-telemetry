# sandbox_telemetry_parse — 2026-11-10 19:06:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1277530 lines=2831
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2822 |
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
| `chromeBrowserPssKb` | {'int': 2822} |
| `chromeGpuPssKb` | {'int': 2822} |
| `chromeOtherPssKb` | {'int': 2822} |
| `chromeProcesses` | {'int': 2822} |
| `chromeProfiles` | {'int': 2822} |
| `chromeRendererMaxPssKb` | {'int': 2822} |
| `chromeRendererPssKb` | {'int': 2822} |
| `chromeRenderers` | {'int': 2822} |
| `chromeTabs` | {'int': 2822} |
| `chromeTabsProbedProfiles` | {'int': 2822} |
| `chromeUtilityPssKb` | {'int': 2822} |
| `desktopPssKb` | {'int': 2822} |
| `hostPssKb` | {'int': 2822} |
| `kind` | {'str': 2822} |
| `memAvailableKb` | {'int': 2822} |
| `memTotalKb` | {'int': 2822} |
| `otherPssKb` | {'int': 2822} |
| `processes` | {'int': 2822} |
| `pssFallbackProcesses` | {'int': 2822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
