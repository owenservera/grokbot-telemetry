# sandbox_telemetry_parse — 2026-11-18 15:44:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=874597 lines=1940
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1933 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1933} |
| `chromeGpuPssKb` | {'int': 1933} |
| `chromeOtherPssKb` | {'int': 1933} |
| `chromeProcesses` | {'int': 1933} |
| `chromeProfiles` | {'int': 1933} |
| `chromeRendererMaxPssKb` | {'int': 1933} |
| `chromeRendererPssKb` | {'int': 1933} |
| `chromeRenderers` | {'int': 1933} |
| `chromeTabs` | {'int': 1933} |
| `chromeTabsProbedProfiles` | {'int': 1933} |
| `chromeUtilityPssKb` | {'int': 1933} |
| `desktopPssKb` | {'int': 1933} |
| `hostPssKb` | {'int': 1933} |
| `kind` | {'str': 1933} |
| `memAvailableKb` | {'int': 1933} |
| `memTotalKb` | {'int': 1933} |
| `otherPssKb` | {'int': 1933} |
| `processes` | {'int': 1933} |
| `pssFallbackProcesses` | {'int': 1933} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
