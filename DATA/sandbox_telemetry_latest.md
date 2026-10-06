# sandbox_telemetry_parse — 2026-10-06 20:52:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=596642 lines=1313
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1308 |
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
| `chromeBrowserPssKb` | {'int': 1308} |
| `chromeGpuPssKb` | {'int': 1308} |
| `chromeOtherPssKb` | {'int': 1308} |
| `chromeProcesses` | {'int': 1308} |
| `chromeProfiles` | {'int': 1308} |
| `chromeRendererMaxPssKb` | {'int': 1308} |
| `chromeRendererPssKb` | {'int': 1308} |
| `chromeRenderers` | {'int': 1308} |
| `chromeTabs` | {'int': 1308} |
| `chromeTabsProbedProfiles` | {'int': 1308} |
| `chromeUtilityPssKb` | {'int': 1308} |
| `desktopPssKb` | {'int': 1308} |
| `hostPssKb` | {'int': 1308} |
| `kind` | {'str': 1308} |
| `memAvailableKb` | {'int': 1308} |
| `memTotalKb` | {'int': 1308} |
| `otherPssKb` | {'int': 1308} |
| `processes` | {'int': 1308} |
| `pssFallbackProcesses` | {'int': 1308} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
