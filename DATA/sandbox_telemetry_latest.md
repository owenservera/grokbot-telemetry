# sandbox_telemetry_parse — 2026-10-13 06:28:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=886042 lines=2143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1837 |
| `chrome_profile_sample` | 298 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1837} |
| `chromeGpuPssKb` | {'int': 1837} |
| `chromeOtherPssKb` | {'int': 1837} |
| `chromeProcesses` | {'int': 1837} |
| `chromeProfiles` | {'int': 1837} |
| `chromeRendererMaxPssKb` | {'int': 1837} |
| `chromeRendererPssKb` | {'int': 1837} |
| `chromeRenderers` | {'int': 1837} |
| `chromeTabs` | {'int': 1837} |
| `chromeTabsProbedProfiles` | {'int': 1837} |
| `chromeUtilityPssKb` | {'int': 1837} |
| `desktopPssKb` | {'int': 1837} |
| `hostPssKb` | {'int': 1837} |
| `kind` | {'str': 1837} |
| `memAvailableKb` | {'int': 1837} |
| `memTotalKb` | {'int': 1837} |
| `otherPssKb` | {'int': 1837} |
| `processes` | {'int': 1837} |
| `pssFallbackProcesses` | {'int': 1837} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 297} |
| `display` | {'int': 298} |
| `kind` | {'str': 298} |
| `processes` | {'int': 298} |
| `pssKb` | {'int': 298} |
| `rendererMaxPssKb` | {'int': 298} |
| `renderers` | {'int': 298} |
| `tabs` | {'int': 298} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
