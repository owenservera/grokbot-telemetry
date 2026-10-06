# sandbox_telemetry_parse — 2026-10-07 00:46:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=702473 lines=1545
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1540 |
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
| `chromeBrowserPssKb` | {'int': 1540} |
| `chromeGpuPssKb` | {'int': 1540} |
| `chromeOtherPssKb` | {'int': 1540} |
| `chromeProcesses` | {'int': 1540} |
| `chromeProfiles` | {'int': 1540} |
| `chromeRendererMaxPssKb` | {'int': 1540} |
| `chromeRendererPssKb` | {'int': 1540} |
| `chromeRenderers` | {'int': 1540} |
| `chromeTabs` | {'int': 1540} |
| `chromeTabsProbedProfiles` | {'int': 1540} |
| `chromeUtilityPssKb` | {'int': 1540} |
| `desktopPssKb` | {'int': 1540} |
| `hostPssKb` | {'int': 1540} |
| `kind` | {'str': 1540} |
| `memAvailableKb` | {'int': 1540} |
| `memTotalKb` | {'int': 1540} |
| `otherPssKb` | {'int': 1540} |
| `processes` | {'int': 1540} |
| `pssFallbackProcesses` | {'int': 1540} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
