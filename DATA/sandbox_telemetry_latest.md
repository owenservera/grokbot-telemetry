# sandbox_telemetry_parse — 2026-10-15 14:36:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=906630 lines=2010
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2005 |
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
| `chromeBrowserPssKb` | {'int': 2005} |
| `chromeGpuPssKb` | {'int': 2005} |
| `chromeOtherPssKb` | {'int': 2005} |
| `chromeProcesses` | {'int': 2005} |
| `chromeProfiles` | {'int': 2005} |
| `chromeRendererMaxPssKb` | {'int': 2005} |
| `chromeRendererPssKb` | {'int': 2005} |
| `chromeRenderers` | {'int': 2005} |
| `chromeTabs` | {'int': 2005} |
| `chromeTabsProbedProfiles` | {'int': 2005} |
| `chromeUtilityPssKb` | {'int': 2005} |
| `desktopPssKb` | {'int': 2005} |
| `hostPssKb` | {'int': 2005} |
| `kind` | {'str': 2005} |
| `memAvailableKb` | {'int': 2005} |
| `memTotalKb` | {'int': 2005} |
| `otherPssKb` | {'int': 2005} |
| `processes` | {'int': 2005} |
| `pssFallbackProcesses` | {'int': 2005} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
