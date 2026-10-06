# sandbox_telemetry_parse — 2026-10-06 22:26:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=639050 lines=1406
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1401 |
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
| `chromeBrowserPssKb` | {'int': 1401} |
| `chromeGpuPssKb` | {'int': 1401} |
| `chromeOtherPssKb` | {'int': 1401} |
| `chromeProcesses` | {'int': 1401} |
| `chromeProfiles` | {'int': 1401} |
| `chromeRendererMaxPssKb` | {'int': 1401} |
| `chromeRendererPssKb` | {'int': 1401} |
| `chromeRenderers` | {'int': 1401} |
| `chromeTabs` | {'int': 1401} |
| `chromeTabsProbedProfiles` | {'int': 1401} |
| `chromeUtilityPssKb` | {'int': 1401} |
| `desktopPssKb` | {'int': 1401} |
| `hostPssKb` | {'int': 1401} |
| `kind` | {'str': 1401} |
| `memAvailableKb` | {'int': 1401} |
| `memTotalKb` | {'int': 1401} |
| `otherPssKb` | {'int': 1401} |
| `processes` | {'int': 1401} |
| `pssFallbackProcesses` | {'int': 1401} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
