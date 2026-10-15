# sandbox_telemetry_parse — 2026-10-15 08:25:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=759730 lines=1685
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1680 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1680} |
| `chromeGpuPssKb` | {'int': 1680} |
| `chromeOtherPssKb` | {'int': 1680} |
| `chromeProcesses` | {'int': 1680} |
| `chromeProfiles` | {'int': 1680} |
| `chromeRendererMaxPssKb` | {'int': 1680} |
| `chromeRendererPssKb` | {'int': 1680} |
| `chromeRenderers` | {'int': 1680} |
| `chromeTabs` | {'int': 1680} |
| `chromeTabsProbedProfiles` | {'int': 1680} |
| `chromeUtilityPssKb` | {'int': 1680} |
| `desktopPssKb` | {'int': 1680} |
| `hostPssKb` | {'int': 1680} |
| `kind` | {'str': 1680} |
| `memAvailableKb` | {'int': 1680} |
| `memTotalKb` | {'int': 1680} |
| `otherPssKb` | {'int': 1680} |
| `processes` | {'int': 1680} |
| `pssFallbackProcesses` | {'int': 1680} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
