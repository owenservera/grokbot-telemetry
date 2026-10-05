# sandbox_telemetry_parse — 2026-10-06 00:40:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=48986 lines=112
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 107 |
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
| `chromeBrowserPssKb` | {'int': 107} |
| `chromeGpuPssKb` | {'int': 107} |
| `chromeOtherPssKb` | {'int': 107} |
| `chromeProcesses` | {'int': 107} |
| `chromeProfiles` | {'int': 107} |
| `chromeRendererMaxPssKb` | {'int': 107} |
| `chromeRendererPssKb` | {'int': 107} |
| `chromeRenderers` | {'int': 107} |
| `chromeTabs` | {'int': 107} |
| `chromeTabsProbedProfiles` | {'int': 107} |
| `chromeUtilityPssKb` | {'int': 107} |
| `desktopPssKb` | {'int': 107} |
| `hostPssKb` | {'int': 107} |
| `kind` | {'str': 107} |
| `memAvailableKb` | {'int': 107} |
| `memTotalKb` | {'int': 107} |
| `otherPssKb` | {'int': 107} |
| `processes` | {'int': 107} |
| `pssFallbackProcesses` | {'int': 107} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
