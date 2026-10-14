# sandbox_telemetry_parse — 2026-10-14 18:28:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=422538 lines=939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 934 |
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
| `chromeBrowserPssKb` | {'int': 934} |
| `chromeGpuPssKb` | {'int': 934} |
| `chromeOtherPssKb` | {'int': 934} |
| `chromeProcesses` | {'int': 934} |
| `chromeProfiles` | {'int': 934} |
| `chromeRendererMaxPssKb` | {'int': 934} |
| `chromeRendererPssKb` | {'int': 934} |
| `chromeRenderers` | {'int': 934} |
| `chromeTabs` | {'int': 934} |
| `chromeTabsProbedProfiles` | {'int': 934} |
| `chromeUtilityPssKb` | {'int': 934} |
| `desktopPssKb` | {'int': 934} |
| `hostPssKb` | {'int': 934} |
| `kind` | {'str': 934} |
| `memAvailableKb` | {'int': 934} |
| `memTotalKb` | {'int': 934} |
| `otherPssKb` | {'int': 934} |
| `processes` | {'int': 934} |
| `pssFallbackProcesses` | {'int': 934} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
