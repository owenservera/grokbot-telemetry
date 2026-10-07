# sandbox_telemetry_parse — 2026-10-07 03:17:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=770557 lines=1694
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1689 |
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
| `chromeBrowserPssKb` | {'int': 1689} |
| `chromeGpuPssKb` | {'int': 1689} |
| `chromeOtherPssKb` | {'int': 1689} |
| `chromeProcesses` | {'int': 1689} |
| `chromeProfiles` | {'int': 1689} |
| `chromeRendererMaxPssKb` | {'int': 1689} |
| `chromeRendererPssKb` | {'int': 1689} |
| `chromeRenderers` | {'int': 1689} |
| `chromeTabs` | {'int': 1689} |
| `chromeTabsProbedProfiles` | {'int': 1689} |
| `chromeUtilityPssKb` | {'int': 1689} |
| `desktopPssKb` | {'int': 1689} |
| `hostPssKb` | {'int': 1689} |
| `kind` | {'str': 1689} |
| `memAvailableKb` | {'int': 1689} |
| `memTotalKb` | {'int': 1689} |
| `otherPssKb` | {'int': 1689} |
| `processes` | {'int': 1689} |
| `pssFallbackProcesses` | {'int': 1689} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
