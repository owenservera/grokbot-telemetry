# sandbox_telemetry_parse — 2026-10-14 18:18:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=418018 lines=929
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 924 |
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
| `chromeBrowserPssKb` | {'int': 924} |
| `chromeGpuPssKb` | {'int': 924} |
| `chromeOtherPssKb` | {'int': 924} |
| `chromeProcesses` | {'int': 924} |
| `chromeProfiles` | {'int': 924} |
| `chromeRendererMaxPssKb` | {'int': 924} |
| `chromeRendererPssKb` | {'int': 924} |
| `chromeRenderers` | {'int': 924} |
| `chromeTabs` | {'int': 924} |
| `chromeTabsProbedProfiles` | {'int': 924} |
| `chromeUtilityPssKb` | {'int': 924} |
| `desktopPssKb` | {'int': 924} |
| `hostPssKb` | {'int': 924} |
| `kind` | {'str': 924} |
| `memAvailableKb` | {'int': 924} |
| `memTotalKb` | {'int': 924} |
| `otherPssKb` | {'int': 924} |
| `processes` | {'int': 924} |
| `pssFallbackProcesses` | {'int': 924} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
