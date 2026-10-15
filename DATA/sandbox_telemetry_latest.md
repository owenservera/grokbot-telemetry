# sandbox_telemetry_parse — 2026-10-15 06:47:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=718146 lines=1593
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1588 |
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
| `chromeBrowserPssKb` | {'int': 1588} |
| `chromeGpuPssKb` | {'int': 1588} |
| `chromeOtherPssKb` | {'int': 1588} |
| `chromeProcesses` | {'int': 1588} |
| `chromeProfiles` | {'int': 1588} |
| `chromeRendererMaxPssKb` | {'int': 1588} |
| `chromeRendererPssKb` | {'int': 1588} |
| `chromeRenderers` | {'int': 1588} |
| `chromeTabs` | {'int': 1588} |
| `chromeTabsProbedProfiles` | {'int': 1588} |
| `chromeUtilityPssKb` | {'int': 1588} |
| `desktopPssKb` | {'int': 1588} |
| `hostPssKb` | {'int': 1588} |
| `kind` | {'str': 1588} |
| `memAvailableKb` | {'int': 1588} |
| `memTotalKb` | {'int': 1588} |
| `otherPssKb` | {'int': 1588} |
| `processes` | {'int': 1588} |
| `pssFallbackProcesses` | {'int': 1588} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
