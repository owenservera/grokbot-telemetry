# sandbox_telemetry_parse — 2026-10-15 10:02:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=799958 lines=1774
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1769 |
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
| `chromeBrowserPssKb` | {'int': 1769} |
| `chromeGpuPssKb` | {'int': 1769} |
| `chromeOtherPssKb` | {'int': 1769} |
| `chromeProcesses` | {'int': 1769} |
| `chromeProfiles` | {'int': 1769} |
| `chromeRendererMaxPssKb` | {'int': 1769} |
| `chromeRendererPssKb` | {'int': 1769} |
| `chromeRenderers` | {'int': 1769} |
| `chromeTabs` | {'int': 1769} |
| `chromeTabsProbedProfiles` | {'int': 1769} |
| `chromeUtilityPssKb` | {'int': 1769} |
| `desktopPssKb` | {'int': 1769} |
| `hostPssKb` | {'int': 1769} |
| `kind` | {'str': 1769} |
| `memAvailableKb` | {'int': 1769} |
| `memTotalKb` | {'int': 1769} |
| `otherPssKb` | {'int': 1769} |
| `processes` | {'int': 1769} |
| `pssFallbackProcesses` | {'int': 1769} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
