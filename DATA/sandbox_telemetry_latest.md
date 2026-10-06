# sandbox_telemetry_parse — 2026-10-06 21:29:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=613058 lines=1349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1344 |
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
| `chromeBrowserPssKb` | {'int': 1344} |
| `chromeGpuPssKb` | {'int': 1344} |
| `chromeOtherPssKb` | {'int': 1344} |
| `chromeProcesses` | {'int': 1344} |
| `chromeProfiles` | {'int': 1344} |
| `chromeRendererMaxPssKb` | {'int': 1344} |
| `chromeRendererPssKb` | {'int': 1344} |
| `chromeRenderers` | {'int': 1344} |
| `chromeTabs` | {'int': 1344} |
| `chromeTabsProbedProfiles` | {'int': 1344} |
| `chromeUtilityPssKb` | {'int': 1344} |
| `desktopPssKb` | {'int': 1344} |
| `hostPssKb` | {'int': 1344} |
| `kind` | {'str': 1344} |
| `memAvailableKb` | {'int': 1344} |
| `memTotalKb` | {'int': 1344} |
| `otherPssKb` | {'int': 1344} |
| `processes` | {'int': 1344} |
| `pssFallbackProcesses` | {'int': 1344} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
