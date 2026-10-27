# sandbox_telemetry_parse — 2026-10-27 06:23:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=367980 lines=817
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 812 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 812} |
| `chromeGpuPssKb` | {'int': 812} |
| `chromeOtherPssKb` | {'int': 812} |
| `chromeProcesses` | {'int': 812} |
| `chromeProfiles` | {'int': 812} |
| `chromeRendererMaxPssKb` | {'int': 812} |
| `chromeRendererPssKb` | {'int': 812} |
| `chromeRenderers` | {'int': 812} |
| `chromeTabs` | {'int': 812} |
| `chromeTabsProbedProfiles` | {'int': 812} |
| `chromeUtilityPssKb` | {'int': 812} |
| `desktopPssKb` | {'int': 812} |
| `hostPssKb` | {'int': 812} |
| `kind` | {'str': 812} |
| `memAvailableKb` | {'int': 812} |
| `memTotalKb` | {'int': 812} |
| `otherPssKb` | {'int': 812} |
| `processes` | {'int': 812} |
| `pssFallbackProcesses` | {'int': 812} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
