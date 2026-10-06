# sandbox_telemetry_parse — 2026-10-06 16:01:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=464858 lines=1024
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1019 |
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
| `chromeBrowserPssKb` | {'int': 1019} |
| `chromeGpuPssKb` | {'int': 1019} |
| `chromeOtherPssKb` | {'int': 1019} |
| `chromeProcesses` | {'int': 1019} |
| `chromeProfiles` | {'int': 1019} |
| `chromeRendererMaxPssKb` | {'int': 1019} |
| `chromeRendererPssKb` | {'int': 1019} |
| `chromeRenderers` | {'int': 1019} |
| `chromeTabs` | {'int': 1019} |
| `chromeTabsProbedProfiles` | {'int': 1019} |
| `chromeUtilityPssKb` | {'int': 1019} |
| `desktopPssKb` | {'int': 1019} |
| `hostPssKb` | {'int': 1019} |
| `kind` | {'str': 1019} |
| `memAvailableKb` | {'int': 1019} |
| `memTotalKb` | {'int': 1019} |
| `otherPssKb` | {'int': 1019} |
| `processes` | {'int': 1019} |
| `pssFallbackProcesses` | {'int': 1019} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
