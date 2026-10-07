# sandbox_telemetry_parse — 2026-10-07 02:24:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=747259 lines=1643
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1638 |
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
| `chromeBrowserPssKb` | {'int': 1638} |
| `chromeGpuPssKb` | {'int': 1638} |
| `chromeOtherPssKb` | {'int': 1638} |
| `chromeProcesses` | {'int': 1638} |
| `chromeProfiles` | {'int': 1638} |
| `chromeRendererMaxPssKb` | {'int': 1638} |
| `chromeRendererPssKb` | {'int': 1638} |
| `chromeRenderers` | {'int': 1638} |
| `chromeTabs` | {'int': 1638} |
| `chromeTabsProbedProfiles` | {'int': 1638} |
| `chromeUtilityPssKb` | {'int': 1638} |
| `desktopPssKb` | {'int': 1638} |
| `hostPssKb` | {'int': 1638} |
| `kind` | {'str': 1638} |
| `memAvailableKb` | {'int': 1638} |
| `memTotalKb` | {'int': 1638} |
| `otherPssKb` | {'int': 1638} |
| `processes` | {'int': 1638} |
| `pssFallbackProcesses` | {'int': 1638} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
