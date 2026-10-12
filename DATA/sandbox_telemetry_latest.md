# sandbox_telemetry_parse — 2026-10-12 21:21:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=669800 lines=1486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1481 |
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
| `chromeBrowserPssKb` | {'int': 1481} |
| `chromeGpuPssKb` | {'int': 1481} |
| `chromeOtherPssKb` | {'int': 1481} |
| `chromeProcesses` | {'int': 1481} |
| `chromeProfiles` | {'int': 1481} |
| `chromeRendererMaxPssKb` | {'int': 1481} |
| `chromeRendererPssKb` | {'int': 1481} |
| `chromeRenderers` | {'int': 1481} |
| `chromeTabs` | {'int': 1481} |
| `chromeTabsProbedProfiles` | {'int': 1481} |
| `chromeUtilityPssKb` | {'int': 1481} |
| `desktopPssKb` | {'int': 1481} |
| `hostPssKb` | {'int': 1481} |
| `kind` | {'str': 1481} |
| `memAvailableKb` | {'int': 1481} |
| `memTotalKb` | {'int': 1481} |
| `otherPssKb` | {'int': 1481} |
| `processes` | {'int': 1481} |
| `pssFallbackProcesses` | {'int': 1481} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
