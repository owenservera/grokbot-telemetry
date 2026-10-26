# sandbox_telemetry_parse — 2026-10-26 23:32:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=201966 lines=450
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 445 |
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
| `chromeBrowserPssKb` | {'int': 445} |
| `chromeGpuPssKb` | {'int': 445} |
| `chromeOtherPssKb` | {'int': 445} |
| `chromeProcesses` | {'int': 445} |
| `chromeProfiles` | {'int': 445} |
| `chromeRendererMaxPssKb` | {'int': 445} |
| `chromeRendererPssKb` | {'int': 445} |
| `chromeRenderers` | {'int': 445} |
| `chromeTabs` | {'int': 445} |
| `chromeTabsProbedProfiles` | {'int': 445} |
| `chromeUtilityPssKb` | {'int': 445} |
| `desktopPssKb` | {'int': 445} |
| `hostPssKb` | {'int': 445} |
| `kind` | {'str': 445} |
| `memAvailableKb` | {'int': 445} |
| `memTotalKb` | {'int': 445} |
| `otherPssKb` | {'int': 445} |
| `processes` | {'int': 445} |
| `pssFallbackProcesses` | {'int': 445} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
