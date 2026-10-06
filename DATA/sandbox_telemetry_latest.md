# sandbox_telemetry_parse — 2026-10-06 13:21:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=391898 lines=864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 859 |
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
| `chromeBrowserPssKb` | {'int': 859} |
| `chromeGpuPssKb` | {'int': 859} |
| `chromeOtherPssKb` | {'int': 859} |
| `chromeProcesses` | {'int': 859} |
| `chromeProfiles` | {'int': 859} |
| `chromeRendererMaxPssKb` | {'int': 859} |
| `chromeRendererPssKb` | {'int': 859} |
| `chromeRenderers` | {'int': 859} |
| `chromeTabs` | {'int': 859} |
| `chromeTabsProbedProfiles` | {'int': 859} |
| `chromeUtilityPssKb` | {'int': 859} |
| `desktopPssKb` | {'int': 859} |
| `hostPssKb` | {'int': 859} |
| `kind` | {'str': 859} |
| `memAvailableKb` | {'int': 859} |
| `memTotalKb` | {'int': 859} |
| `otherPssKb` | {'int': 859} |
| `processes` | {'int': 859} |
| `pssFallbackProcesses` | {'int': 859} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
