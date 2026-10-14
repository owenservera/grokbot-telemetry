# sandbox_telemetry_parse — 2026-10-14 09:49:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=220494 lines=492
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 487 |
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
| `chromeBrowserPssKb` | {'int': 487} |
| `chromeGpuPssKb` | {'int': 487} |
| `chromeOtherPssKb` | {'int': 487} |
| `chromeProcesses` | {'int': 487} |
| `chromeProfiles` | {'int': 487} |
| `chromeRendererMaxPssKb` | {'int': 487} |
| `chromeRendererPssKb` | {'int': 487} |
| `chromeRenderers` | {'int': 487} |
| `chromeTabs` | {'int': 487} |
| `chromeTabsProbedProfiles` | {'int': 487} |
| `chromeUtilityPssKb` | {'int': 487} |
| `desktopPssKb` | {'int': 487} |
| `hostPssKb` | {'int': 487} |
| `kind` | {'str': 487} |
| `memAvailableKb` | {'int': 487} |
| `memTotalKb` | {'int': 487} |
| `otherPssKb` | {'int': 487} |
| `processes` | {'int': 487} |
| `pssFallbackProcesses` | {'int': 487} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
