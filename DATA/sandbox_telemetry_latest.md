# sandbox_telemetry_parse — 2026-10-07 00:15:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=688306 lines=1514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1509 |
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
| `chromeBrowserPssKb` | {'int': 1509} |
| `chromeGpuPssKb` | {'int': 1509} |
| `chromeOtherPssKb` | {'int': 1509} |
| `chromeProcesses` | {'int': 1509} |
| `chromeProfiles` | {'int': 1509} |
| `chromeRendererMaxPssKb` | {'int': 1509} |
| `chromeRendererPssKb` | {'int': 1509} |
| `chromeRenderers` | {'int': 1509} |
| `chromeTabs` | {'int': 1509} |
| `chromeTabsProbedProfiles` | {'int': 1509} |
| `chromeUtilityPssKb` | {'int': 1509} |
| `desktopPssKb` | {'int': 1509} |
| `hostPssKb` | {'int': 1509} |
| `kind` | {'str': 1509} |
| `memAvailableKb` | {'int': 1509} |
| `memTotalKb` | {'int': 1509} |
| `otherPssKb` | {'int': 1509} |
| `processes` | {'int': 1509} |
| `pssFallbackProcesses` | {'int': 1509} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
