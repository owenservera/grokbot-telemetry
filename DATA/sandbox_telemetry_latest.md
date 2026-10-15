# sandbox_telemetry_parse — 2026-10-15 16:21:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=947310 lines=2100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2095 |
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
| `chromeBrowserPssKb` | {'int': 2095} |
| `chromeGpuPssKb` | {'int': 2095} |
| `chromeOtherPssKb` | {'int': 2095} |
| `chromeProcesses` | {'int': 2095} |
| `chromeProfiles` | {'int': 2095} |
| `chromeRendererMaxPssKb` | {'int': 2095} |
| `chromeRendererPssKb` | {'int': 2095} |
| `chromeRenderers` | {'int': 2095} |
| `chromeTabs` | {'int': 2095} |
| `chromeTabsProbedProfiles` | {'int': 2095} |
| `chromeUtilityPssKb` | {'int': 2095} |
| `desktopPssKb` | {'int': 2095} |
| `hostPssKb` | {'int': 2095} |
| `kind` | {'str': 2095} |
| `memAvailableKb` | {'int': 2095} |
| `memTotalKb` | {'int': 2095} |
| `otherPssKb` | {'int': 2095} |
| `processes` | {'int': 2095} |
| `pssFallbackProcesses` | {'int': 2095} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
