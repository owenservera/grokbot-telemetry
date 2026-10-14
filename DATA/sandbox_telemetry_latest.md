# sandbox_telemetry_parse — 2026-10-14 11:44:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=266146 lines=593
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 588 |
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
| `chromeBrowserPssKb` | {'int': 588} |
| `chromeGpuPssKb` | {'int': 588} |
| `chromeOtherPssKb` | {'int': 588} |
| `chromeProcesses` | {'int': 588} |
| `chromeProfiles` | {'int': 588} |
| `chromeRendererMaxPssKb` | {'int': 588} |
| `chromeRendererPssKb` | {'int': 588} |
| `chromeRenderers` | {'int': 588} |
| `chromeTabs` | {'int': 588} |
| `chromeTabsProbedProfiles` | {'int': 588} |
| `chromeUtilityPssKb` | {'int': 588} |
| `desktopPssKb` | {'int': 588} |
| `hostPssKb` | {'int': 588} |
| `kind` | {'str': 588} |
| `memAvailableKb` | {'int': 588} |
| `memTotalKb` | {'int': 588} |
| `otherPssKb` | {'int': 588} |
| `processes` | {'int': 588} |
| `pssFallbackProcesses` | {'int': 588} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
