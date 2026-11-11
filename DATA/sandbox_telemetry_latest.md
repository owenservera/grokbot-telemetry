# sandbox_telemetry_parse — 2026-11-11 17:07:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1729936 lines=3831
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3822 |
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
| `chromeBrowserPssKb` | {'int': 3822} |
| `chromeGpuPssKb` | {'int': 3822} |
| `chromeOtherPssKb` | {'int': 3822} |
| `chromeProcesses` | {'int': 3822} |
| `chromeProfiles` | {'int': 3822} |
| `chromeRendererMaxPssKb` | {'int': 3822} |
| `chromeRendererPssKb` | {'int': 3822} |
| `chromeRenderers` | {'int': 3822} |
| `chromeTabs` | {'int': 3822} |
| `chromeTabsProbedProfiles` | {'int': 3822} |
| `chromeUtilityPssKb` | {'int': 3822} |
| `desktopPssKb` | {'int': 3822} |
| `hostPssKb` | {'int': 3822} |
| `kind` | {'str': 3822} |
| `memAvailableKb` | {'int': 3822} |
| `memTotalKb` | {'int': 3822} |
| `otherPssKb` | {'int': 3822} |
| `processes` | {'int': 3822} |
| `pssFallbackProcesses` | {'int': 3822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
