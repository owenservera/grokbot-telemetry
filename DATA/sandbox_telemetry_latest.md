# sandbox_telemetry_parse — 2026-10-06 12:36:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=373202 lines=823
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 818 |
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
| `chromeBrowserPssKb` | {'int': 818} |
| `chromeGpuPssKb` | {'int': 818} |
| `chromeOtherPssKb` | {'int': 818} |
| `chromeProcesses` | {'int': 818} |
| `chromeProfiles` | {'int': 818} |
| `chromeRendererMaxPssKb` | {'int': 818} |
| `chromeRendererPssKb` | {'int': 818} |
| `chromeRenderers` | {'int': 818} |
| `chromeTabs` | {'int': 818} |
| `chromeTabsProbedProfiles` | {'int': 818} |
| `chromeUtilityPssKb` | {'int': 818} |
| `desktopPssKb` | {'int': 818} |
| `hostPssKb` | {'int': 818} |
| `kind` | {'str': 818} |
| `memAvailableKb` | {'int': 818} |
| `memTotalKb` | {'int': 818} |
| `otherPssKb` | {'int': 818} |
| `processes` | {'int': 818} |
| `pssFallbackProcesses` | {'int': 818} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
