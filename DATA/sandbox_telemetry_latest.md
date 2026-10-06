# sandbox_telemetry_parse — 2026-10-06 12:41:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=375482 lines=828
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 823 |
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
| `chromeBrowserPssKb` | {'int': 823} |
| `chromeGpuPssKb` | {'int': 823} |
| `chromeOtherPssKb` | {'int': 823} |
| `chromeProcesses` | {'int': 823} |
| `chromeProfiles` | {'int': 823} |
| `chromeRendererMaxPssKb` | {'int': 823} |
| `chromeRendererPssKb` | {'int': 823} |
| `chromeRenderers` | {'int': 823} |
| `chromeTabs` | {'int': 823} |
| `chromeTabsProbedProfiles` | {'int': 823} |
| `chromeUtilityPssKb` | {'int': 823} |
| `desktopPssKb` | {'int': 823} |
| `hostPssKb` | {'int': 823} |
| `kind` | {'str': 823} |
| `memAvailableKb` | {'int': 823} |
| `memTotalKb` | {'int': 823} |
| `otherPssKb` | {'int': 823} |
| `processes` | {'int': 823} |
| `pssFallbackProcesses` | {'int': 823} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
