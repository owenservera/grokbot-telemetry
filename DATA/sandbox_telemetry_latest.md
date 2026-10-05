# sandbox_telemetry_parse — 2026-10-06 01:47:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=79538 lines=179
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 174 |
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
| `chromeBrowserPssKb` | {'int': 174} |
| `chromeGpuPssKb` | {'int': 174} |
| `chromeOtherPssKb` | {'int': 174} |
| `chromeProcesses` | {'int': 174} |
| `chromeProfiles` | {'int': 174} |
| `chromeRendererMaxPssKb` | {'int': 174} |
| `chromeRendererPssKb` | {'int': 174} |
| `chromeRenderers` | {'int': 174} |
| `chromeTabs` | {'int': 174} |
| `chromeTabsProbedProfiles` | {'int': 174} |
| `chromeUtilityPssKb` | {'int': 174} |
| `desktopPssKb` | {'int': 174} |
| `hostPssKb` | {'int': 174} |
| `kind` | {'str': 174} |
| `memAvailableKb` | {'int': 174} |
| `memTotalKb` | {'int': 174} |
| `otherPssKb` | {'int': 174} |
| `processes` | {'int': 174} |
| `pssFallbackProcesses` | {'int': 174} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
