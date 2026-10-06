# sandbox_telemetry_parse — 2026-10-06 11:13:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=335354 lines=740
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 735 |
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
| `chromeBrowserPssKb` | {'int': 735} |
| `chromeGpuPssKb` | {'int': 735} |
| `chromeOtherPssKb` | {'int': 735} |
| `chromeProcesses` | {'int': 735} |
| `chromeProfiles` | {'int': 735} |
| `chromeRendererMaxPssKb` | {'int': 735} |
| `chromeRendererPssKb` | {'int': 735} |
| `chromeRenderers` | {'int': 735} |
| `chromeTabs` | {'int': 735} |
| `chromeTabsProbedProfiles` | {'int': 735} |
| `chromeUtilityPssKb` | {'int': 735} |
| `desktopPssKb` | {'int': 735} |
| `hostPssKb` | {'int': 735} |
| `kind` | {'str': 735} |
| `memAvailableKb` | {'int': 735} |
| `memTotalKb` | {'int': 735} |
| `otherPssKb` | {'int': 735} |
| `processes` | {'int': 735} |
| `pssFallbackProcesses` | {'int': 735} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
