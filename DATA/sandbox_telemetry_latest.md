# sandbox_telemetry_parse — 2026-10-16 10:37:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=365567 lines=1366
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 898 |
| `memory_sample` | 459 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 459} |
| `chromeGpuPssKb` | {'int': 459} |
| `chromeOtherPssKb` | {'int': 459} |
| `chromeProcesses` | {'int': 459} |
| `chromeProfiles` | {'int': 459} |
| `chromeRendererMaxPssKb` | {'int': 459} |
| `chromeRendererPssKb` | {'int': 459} |
| `chromeRenderers` | {'int': 459} |
| `chromeTabs` | {'int': 459} |
| `chromeTabsProbedProfiles` | {'int': 459} |
| `chromeUtilityPssKb` | {'int': 459} |
| `desktopPssKb` | {'int': 459} |
| `hostPssKb` | {'int': 459} |
| `kind` | {'str': 459} |
| `memAvailableKb` | {'int': 459} |
| `memTotalKb` | {'int': 459} |
| `otherPssKb` | {'int': 459} |
| `processes` | {'int': 459} |
| `pssFallbackProcesses` | {'int': 459} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 895} |
| `display` | {'int': 898} |
| `kind` | {'str': 898} |
| `processes` | {'int': 898} |
| `pssKb` | {'int': 898} |
| `rendererMaxPssKb` | {'int': 898} |
| `renderers` | {'int': 898} |
| `tabs` | {'int': 897} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
