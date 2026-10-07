# sandbox_telemetry_parse — 2026-10-07 15:30:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1099333 lines=2415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2410 |
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
| `chromeBrowserPssKb` | {'int': 2410} |
| `chromeGpuPssKb` | {'int': 2410} |
| `chromeOtherPssKb` | {'int': 2410} |
| `chromeProcesses` | {'int': 2410} |
| `chromeProfiles` | {'int': 2410} |
| `chromeRendererMaxPssKb` | {'int': 2410} |
| `chromeRendererPssKb` | {'int': 2410} |
| `chromeRenderers` | {'int': 2410} |
| `chromeTabs` | {'int': 2410} |
| `chromeTabsProbedProfiles` | {'int': 2410} |
| `chromeUtilityPssKb` | {'int': 2410} |
| `desktopPssKb` | {'int': 2410} |
| `hostPssKb` | {'int': 2410} |
| `kind` | {'str': 2410} |
| `memAvailableKb` | {'int': 2410} |
| `memTotalKb` | {'int': 2410} |
| `otherPssKb` | {'int': 2410} |
| `processes` | {'int': 2410} |
| `pssFallbackProcesses` | {'int': 2410} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
