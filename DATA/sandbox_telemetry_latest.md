# sandbox_telemetry_parse — 2026-10-15 22:09:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1079294 lines=2392
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2387 |
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
| `chromeBrowserPssKb` | {'int': 2387} |
| `chromeGpuPssKb` | {'int': 2387} |
| `chromeOtherPssKb` | {'int': 2387} |
| `chromeProcesses` | {'int': 2387} |
| `chromeProfiles` | {'int': 2387} |
| `chromeRendererMaxPssKb` | {'int': 2387} |
| `chromeRendererPssKb` | {'int': 2387} |
| `chromeRenderers` | {'int': 2387} |
| `chromeTabs` | {'int': 2387} |
| `chromeTabsProbedProfiles` | {'int': 2387} |
| `chromeUtilityPssKb` | {'int': 2387} |
| `desktopPssKb` | {'int': 2387} |
| `hostPssKb` | {'int': 2387} |
| `kind` | {'str': 2387} |
| `memAvailableKb` | {'int': 2387} |
| `memTotalKb` | {'int': 2387} |
| `otherPssKb` | {'int': 2387} |
| `processes` | {'int': 2387} |
| `pssFallbackProcesses` | {'int': 2387} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
