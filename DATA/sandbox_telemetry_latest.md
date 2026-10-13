# sandbox_telemetry_parse — 2026-10-14 01:15:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=15286 lines=38
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 33 |
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
| `chromeBrowserPssKb` | {'int': 33} |
| `chromeGpuPssKb` | {'int': 33} |
| `chromeOtherPssKb` | {'int': 33} |
| `chromeProcesses` | {'int': 33} |
| `chromeProfiles` | {'int': 33} |
| `chromeRendererMaxPssKb` | {'int': 33} |
| `chromeRendererPssKb` | {'int': 33} |
| `chromeRenderers` | {'int': 33} |
| `chromeTabs` | {'int': 33} |
| `chromeTabsProbedProfiles` | {'int': 33} |
| `chromeUtilityPssKb` | {'int': 33} |
| `desktopPssKb` | {'int': 33} |
| `hostPssKb` | {'int': 33} |
| `kind` | {'str': 33} |
| `memAvailableKb` | {'int': 33} |
| `memTotalKb` | {'int': 33} |
| `otherPssKb` | {'int': 33} |
| `processes` | {'int': 33} |
| `pssFallbackProcesses` | {'int': 33} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
