# sandbox_telemetry_parse — 2026-10-14 07:23:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=161282 lines=361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 356 |
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
| `chromeBrowserPssKb` | {'int': 356} |
| `chromeGpuPssKb` | {'int': 356} |
| `chromeOtherPssKb` | {'int': 356} |
| `chromeProcesses` | {'int': 356} |
| `chromeProfiles` | {'int': 356} |
| `chromeRendererMaxPssKb` | {'int': 356} |
| `chromeRendererPssKb` | {'int': 356} |
| `chromeRenderers` | {'int': 356} |
| `chromeTabs` | {'int': 356} |
| `chromeTabsProbedProfiles` | {'int': 356} |
| `chromeUtilityPssKb` | {'int': 356} |
| `desktopPssKb` | {'int': 356} |
| `hostPssKb` | {'int': 356} |
| `kind` | {'str': 356} |
| `memAvailableKb` | {'int': 356} |
| `memTotalKb` | {'int': 356} |
| `otherPssKb` | {'int': 356} |
| `processes` | {'int': 356} |
| `pssFallbackProcesses` | {'int': 356} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
