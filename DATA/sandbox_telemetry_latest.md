# sandbox_telemetry_parse — 2026-10-06 22:10:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=631754 lines=1390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1385 |
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
| `chromeBrowserPssKb` | {'int': 1385} |
| `chromeGpuPssKb` | {'int': 1385} |
| `chromeOtherPssKb` | {'int': 1385} |
| `chromeProcesses` | {'int': 1385} |
| `chromeProfiles` | {'int': 1385} |
| `chromeRendererMaxPssKb` | {'int': 1385} |
| `chromeRendererPssKb` | {'int': 1385} |
| `chromeRenderers` | {'int': 1385} |
| `chromeTabs` | {'int': 1385} |
| `chromeTabsProbedProfiles` | {'int': 1385} |
| `chromeUtilityPssKb` | {'int': 1385} |
| `desktopPssKb` | {'int': 1385} |
| `hostPssKb` | {'int': 1385} |
| `kind` | {'str': 1385} |
| `memAvailableKb` | {'int': 1385} |
| `memTotalKb` | {'int': 1385} |
| `otherPssKb` | {'int': 1385} |
| `processes` | {'int': 1385} |
| `pssFallbackProcesses` | {'int': 1385} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
