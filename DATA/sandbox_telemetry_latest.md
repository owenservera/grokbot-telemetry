# sandbox_telemetry_parse — 2026-10-13 13:39:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1112826 lines=2855
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2193 |
| `chrome_profile_sample` | 654 |
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
| `chromeBrowserPssKb` | {'int': 2193} |
| `chromeGpuPssKb` | {'int': 2193} |
| `chromeOtherPssKb` | {'int': 2193} |
| `chromeProcesses` | {'int': 2193} |
| `chromeProfiles` | {'int': 2193} |
| `chromeRendererMaxPssKb` | {'int': 2193} |
| `chromeRendererPssKb` | {'int': 2193} |
| `chromeRenderers` | {'int': 2193} |
| `chromeTabs` | {'int': 2193} |
| `chromeTabsProbedProfiles` | {'int': 2193} |
| `chromeUtilityPssKb` | {'int': 2193} |
| `desktopPssKb` | {'int': 2193} |
| `hostPssKb` | {'int': 2193} |
| `kind` | {'str': 2193} |
| `memAvailableKb` | {'int': 2193} |
| `memTotalKb` | {'int': 2193} |
| `otherPssKb` | {'int': 2193} |
| `processes` | {'int': 2193} |
| `pssFallbackProcesses` | {'int': 2193} |

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
| `cpuMillicores` | {'int': 653} |
| `display` | {'int': 654} |
| `kind` | {'str': 654} |
| `processes` | {'int': 654} |
| `pssKb` | {'int': 654} |
| `rendererMaxPssKb` | {'int': 654} |
| `renderers` | {'int': 654} |
| `tabs` | {'int': 654} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
