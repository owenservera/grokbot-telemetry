# sandbox_telemetry_parse — 2026-10-15 22:45:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1091498 lines=2419
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2414 |
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
| `chromeBrowserPssKb` | {'int': 2414} |
| `chromeGpuPssKb` | {'int': 2414} |
| `chromeOtherPssKb` | {'int': 2414} |
| `chromeProcesses` | {'int': 2414} |
| `chromeProfiles` | {'int': 2414} |
| `chromeRendererMaxPssKb` | {'int': 2414} |
| `chromeRendererPssKb` | {'int': 2414} |
| `chromeRenderers` | {'int': 2414} |
| `chromeTabs` | {'int': 2414} |
| `chromeTabsProbedProfiles` | {'int': 2414} |
| `chromeUtilityPssKb` | {'int': 2414} |
| `desktopPssKb` | {'int': 2414} |
| `hostPssKb` | {'int': 2414} |
| `kind` | {'str': 2414} |
| `memAvailableKb` | {'int': 2414} |
| `memTotalKb` | {'int': 2414} |
| `otherPssKb` | {'int': 2414} |
| `processes` | {'int': 2414} |
| `pssFallbackProcesses` | {'int': 2414} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
