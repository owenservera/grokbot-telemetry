# sandbox_telemetry_parse — 2026-10-12 21:19:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=669348 lines=1485
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1480 |
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
| `chromeBrowserPssKb` | {'int': 1480} |
| `chromeGpuPssKb` | {'int': 1480} |
| `chromeOtherPssKb` | {'int': 1480} |
| `chromeProcesses` | {'int': 1480} |
| `chromeProfiles` | {'int': 1480} |
| `chromeRendererMaxPssKb` | {'int': 1480} |
| `chromeRendererPssKb` | {'int': 1480} |
| `chromeRenderers` | {'int': 1480} |
| `chromeTabs` | {'int': 1480} |
| `chromeTabsProbedProfiles` | {'int': 1480} |
| `chromeUtilityPssKb` | {'int': 1480} |
| `desktopPssKb` | {'int': 1480} |
| `hostPssKb` | {'int': 1480} |
| `kind` | {'str': 1480} |
| `memAvailableKb` | {'int': 1480} |
| `memTotalKb` | {'int': 1480} |
| `otherPssKb` | {'int': 1480} |
| `processes` | {'int': 1480} |
| `pssFallbackProcesses` | {'int': 1480} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
