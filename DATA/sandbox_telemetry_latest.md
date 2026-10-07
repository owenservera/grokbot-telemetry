# sandbox_telemetry_parse — 2026-10-07 14:39:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1077901 lines=2368
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2363 |
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
| `chromeBrowserPssKb` | {'int': 2363} |
| `chromeGpuPssKb` | {'int': 2363} |
| `chromeOtherPssKb` | {'int': 2363} |
| `chromeProcesses` | {'int': 2363} |
| `chromeProfiles` | {'int': 2363} |
| `chromeRendererMaxPssKb` | {'int': 2363} |
| `chromeRendererPssKb` | {'int': 2363} |
| `chromeRenderers` | {'int': 2363} |
| `chromeTabs` | {'int': 2363} |
| `chromeTabsProbedProfiles` | {'int': 2363} |
| `chromeUtilityPssKb` | {'int': 2363} |
| `desktopPssKb` | {'int': 2363} |
| `hostPssKb` | {'int': 2363} |
| `kind` | {'str': 2363} |
| `memAvailableKb` | {'int': 2363} |
| `memTotalKb` | {'int': 2363} |
| `otherPssKb` | {'int': 2363} |
| `processes` | {'int': 2363} |
| `pssFallbackProcesses` | {'int': 2363} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
