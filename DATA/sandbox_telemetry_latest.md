# sandbox_telemetry_parse — 2026-10-13 03:10:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=783555 lines=1821
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1676 |
| `chrome_profile_sample` | 137 |
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
| `chromeBrowserPssKb` | {'int': 1676} |
| `chromeGpuPssKb` | {'int': 1676} |
| `chromeOtherPssKb` | {'int': 1676} |
| `chromeProcesses` | {'int': 1676} |
| `chromeProfiles` | {'int': 1676} |
| `chromeRendererMaxPssKb` | {'int': 1676} |
| `chromeRendererPssKb` | {'int': 1676} |
| `chromeRenderers` | {'int': 1676} |
| `chromeTabs` | {'int': 1676} |
| `chromeTabsProbedProfiles` | {'int': 1676} |
| `chromeUtilityPssKb` | {'int': 1676} |
| `desktopPssKb` | {'int': 1676} |
| `hostPssKb` | {'int': 1676} |
| `kind` | {'str': 1676} |
| `memAvailableKb` | {'int': 1676} |
| `memTotalKb` | {'int': 1676} |
| `otherPssKb` | {'int': 1676} |
| `processes` | {'int': 1676} |
| `pssFallbackProcesses` | {'int': 1676} |

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
| `cpuMillicores` | {'int': 136} |
| `display` | {'int': 137} |
| `kind` | {'str': 137} |
| `processes` | {'int': 137} |
| `pssKb` | {'int': 137} |
| `rendererMaxPssKb` | {'int': 137} |
| `renderers` | {'int': 137} |
| `tabs` | {'int': 137} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
