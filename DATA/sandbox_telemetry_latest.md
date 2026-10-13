# sandbox_telemetry_parse — 2026-10-13 23:41:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1300559 lines=3443
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2487 |
| `chrome_profile_sample` | 948 |
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
| `chromeBrowserPssKb` | {'int': 2487} |
| `chromeGpuPssKb` | {'int': 2487} |
| `chromeOtherPssKb` | {'int': 2487} |
| `chromeProcesses` | {'int': 2487} |
| `chromeProfiles` | {'int': 2487} |
| `chromeRendererMaxPssKb` | {'int': 2487} |
| `chromeRendererPssKb` | {'int': 2487} |
| `chromeRenderers` | {'int': 2487} |
| `chromeTabs` | {'int': 2487} |
| `chromeTabsProbedProfiles` | {'int': 2487} |
| `chromeUtilityPssKb` | {'int': 2487} |
| `desktopPssKb` | {'int': 2487} |
| `hostPssKb` | {'int': 2487} |
| `kind` | {'str': 2487} |
| `memAvailableKb` | {'int': 2487} |
| `memTotalKb` | {'int': 2487} |
| `otherPssKb` | {'int': 2487} |
| `processes` | {'int': 2487} |
| `pssFallbackProcesses` | {'int': 2487} |

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
| `cpuMillicores` | {'int': 947} |
| `display` | {'int': 948} |
| `kind` | {'str': 948} |
| `processes` | {'int': 948} |
| `pssKb` | {'int': 948} |
| `rendererMaxPssKb` | {'int': 948} |
| `renderers` | {'int': 948} |
| `tabs` | {'int': 948} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
