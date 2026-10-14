# sandbox_telemetry_parse — 2026-10-14 12:16:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=280610 lines=625
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 620 |
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
| `chromeBrowserPssKb` | {'int': 620} |
| `chromeGpuPssKb` | {'int': 620} |
| `chromeOtherPssKb` | {'int': 620} |
| `chromeProcesses` | {'int': 620} |
| `chromeProfiles` | {'int': 620} |
| `chromeRendererMaxPssKb` | {'int': 620} |
| `chromeRendererPssKb` | {'int': 620} |
| `chromeRenderers` | {'int': 620} |
| `chromeTabs` | {'int': 620} |
| `chromeTabsProbedProfiles` | {'int': 620} |
| `chromeUtilityPssKb` | {'int': 620} |
| `desktopPssKb` | {'int': 620} |
| `hostPssKb` | {'int': 620} |
| `kind` | {'str': 620} |
| `memAvailableKb` | {'int': 620} |
| `memTotalKb` | {'int': 620} |
| `otherPssKb` | {'int': 620} |
| `processes` | {'int': 620} |
| `pssFallbackProcesses` | {'int': 620} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
