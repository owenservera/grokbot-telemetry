# sandbox_telemetry_parse — 2026-10-15 23:08:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1100086 lines=2438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2433 |
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
| `chromeBrowserPssKb` | {'int': 2433} |
| `chromeGpuPssKb` | {'int': 2433} |
| `chromeOtherPssKb` | {'int': 2433} |
| `chromeProcesses` | {'int': 2433} |
| `chromeProfiles` | {'int': 2433} |
| `chromeRendererMaxPssKb` | {'int': 2433} |
| `chromeRendererPssKb` | {'int': 2433} |
| `chromeRenderers` | {'int': 2433} |
| `chromeTabs` | {'int': 2433} |
| `chromeTabsProbedProfiles` | {'int': 2433} |
| `chromeUtilityPssKb` | {'int': 2433} |
| `desktopPssKb` | {'int': 2433} |
| `hostPssKb` | {'int': 2433} |
| `kind` | {'str': 2433} |
| `memAvailableKb` | {'int': 2433} |
| `memTotalKb` | {'int': 2433} |
| `otherPssKb` | {'int': 2433} |
| `processes` | {'int': 2433} |
| `pssFallbackProcesses` | {'int': 2433} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
