# sandbox_telemetry_parse — 2026-10-06 18:27:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=530522 lines=1168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1163 |
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
| `chromeBrowserPssKb` | {'int': 1163} |
| `chromeGpuPssKb` | {'int': 1163} |
| `chromeOtherPssKb` | {'int': 1163} |
| `chromeProcesses` | {'int': 1163} |
| `chromeProfiles` | {'int': 1163} |
| `chromeRendererMaxPssKb` | {'int': 1163} |
| `chromeRendererPssKb` | {'int': 1163} |
| `chromeRenderers` | {'int': 1163} |
| `chromeTabs` | {'int': 1163} |
| `chromeTabsProbedProfiles` | {'int': 1163} |
| `chromeUtilityPssKb` | {'int': 1163} |
| `desktopPssKb` | {'int': 1163} |
| `hostPssKb` | {'int': 1163} |
| `kind` | {'str': 1163} |
| `memAvailableKb` | {'int': 1163} |
| `memTotalKb` | {'int': 1163} |
| `otherPssKb` | {'int': 1163} |
| `processes` | {'int': 1163} |
| `pssFallbackProcesses` | {'int': 1163} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
