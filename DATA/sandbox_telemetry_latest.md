# sandbox_telemetry_parse — 2026-10-27 03:27:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=294756 lines=655
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 650 |
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
| `chromeBrowserPssKb` | {'int': 650} |
| `chromeGpuPssKb` | {'int': 650} |
| `chromeOtherPssKb` | {'int': 650} |
| `chromeProcesses` | {'int': 650} |
| `chromeProfiles` | {'int': 650} |
| `chromeRendererMaxPssKb` | {'int': 650} |
| `chromeRendererPssKb` | {'int': 650} |
| `chromeRenderers` | {'int': 650} |
| `chromeTabs` | {'int': 650} |
| `chromeTabsProbedProfiles` | {'int': 650} |
| `chromeUtilityPssKb` | {'int': 650} |
| `desktopPssKb` | {'int': 650} |
| `hostPssKb` | {'int': 650} |
| `kind` | {'str': 650} |
| `memAvailableKb` | {'int': 650} |
| `memTotalKb` | {'int': 650} |
| `otherPssKb` | {'int': 650} |
| `processes` | {'int': 650} |
| `pssFallbackProcesses` | {'int': 650} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
