# sandbox_telemetry_parse — 2026-10-15 11:36:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=839282 lines=1861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1856 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1856} |
| `chromeGpuPssKb` | {'int': 1856} |
| `chromeOtherPssKb` | {'int': 1856} |
| `chromeProcesses` | {'int': 1856} |
| `chromeProfiles` | {'int': 1856} |
| `chromeRendererMaxPssKb` | {'int': 1856} |
| `chromeRendererPssKb` | {'int': 1856} |
| `chromeRenderers` | {'int': 1856} |
| `chromeTabs` | {'int': 1856} |
| `chromeTabsProbedProfiles` | {'int': 1856} |
| `chromeUtilityPssKb` | {'int': 1856} |
| `desktopPssKb` | {'int': 1856} |
| `hostPssKb` | {'int': 1856} |
| `kind` | {'str': 1856} |
| `memAvailableKb` | {'int': 1856} |
| `memTotalKb` | {'int': 1856} |
| `otherPssKb` | {'int': 1856} |
| `processes` | {'int': 1856} |
| `pssFallbackProcesses` | {'int': 1856} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
