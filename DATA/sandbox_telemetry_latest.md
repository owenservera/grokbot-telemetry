# sandbox_telemetry_parse — 2026-10-14 01:39:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=26134 lines=62
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 57 |
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
| `chromeBrowserPssKb` | {'int': 57} |
| `chromeGpuPssKb` | {'int': 57} |
| `chromeOtherPssKb` | {'int': 57} |
| `chromeProcesses` | {'int': 57} |
| `chromeProfiles` | {'int': 57} |
| `chromeRendererMaxPssKb` | {'int': 57} |
| `chromeRendererPssKb` | {'int': 57} |
| `chromeRenderers` | {'int': 57} |
| `chromeTabs` | {'int': 57} |
| `chromeTabsProbedProfiles` | {'int': 57} |
| `chromeUtilityPssKb` | {'int': 57} |
| `desktopPssKb` | {'int': 57} |
| `hostPssKb` | {'int': 57} |
| `kind` | {'str': 57} |
| `memAvailableKb` | {'int': 57} |
| `memTotalKb` | {'int': 57} |
| `otherPssKb` | {'int': 57} |
| `processes` | {'int': 57} |
| `pssFallbackProcesses` | {'int': 57} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
